from diagrams import Cluster, Diagram
from diagrams.gcp.analytics import Bigquery, Dataproc
from diagrams.gcp.storage import Storage
from diagrams.onprem.queue import Kafka

with Diagram("Chatbot Architecture"):

    with Cluster("Orchestration"):
        with Cluster("Extraction"):
            kafka = Kafka("Kafka")

        with Cluster("Loading"):
            gcs = Storage("Cloud Storage")

        with Cluster("Transformation"):
            spark = Dataproc("Spark Cluster")

        with Cluster("Analysis"):
            bq = Bigquery("BigQuery")

    kafka >> gcs >> spark >> bq


with Diagram("Transformation Layer"):

    with Cluster("Loading"):
        gcs_raw = Storage("Raw Data")

    with Cluster("Transformation"):
        bronze = Dataproc("Bronze Processing")
        bronze_tables = Storage("Bronze Data")
        silver = Dataproc("Silver Processing")
        silver_tables = Storage("Silver Data")
        gold = Dataproc("Gold Processing")

    with Cluster("Analysis"):
        gold_tables = Storage("Gold Data")
        bq_native = Bigquery("BigQuery Native Tables")
        bq_external = Bigquery("BigQuery External Queries")

    gcs_raw >> bronze >> bronze_tables >> silver >> silver_tables >> gold

    gold >> gold_tables >> bq_external
    gold >> bq_native
