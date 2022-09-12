# Answers

These are the same outputs presented (and explained) in the notebook [/notebooks/analysis.ipynb](../notebooks/analysis.ipynb)

1. **What is the number of unique conversations per channel?**
**Answer:**

|     **channel**    | **number of conversations** |
|:------------------:|----------------------------:|
| telegram           |                       10186 |
| whatsapp           |                       10043 |
| instagram          |                       10038 |
| facebook messenger |                        9954 |
| sms                |                        9975 |

We note that the numbers might be *slightly* off due to the 4 interactions that were (deliberately) dropped when we cleaned the data.

***

2. **Which was the day with the most conversations?**
**Answer:** As we can see in the [/answers/data/conversations_per_day.csv](data/converstions_per_day.csv) file, the day with the most conversations was 2021-04-26 (April 26, 2021).

***

3. **Which city has the most unique users?**
**Answer**: Joinvile, as we can see in the [/answers/data/unique_users_per_city.csv](data/unique_users_per_city.csv) file.

***

4. **What are the top 5 Pokémon in the age range of 20-30 years?**
**Answer**: Here are the favourite Pokémon in the desired age range:

|  **pokémon**  | **number of favourite selections** |
|:-------------:|------------------------------------|
| dewgong       |                                 38 |
| venusaur-mega |                                 38 |
| grotle        |                                 37 |
| electrode     |                                 37 |
| moltres       |                                 36 |
| yamask-galar  |                                 36 |

Even though the question asked about the top 5 Pokémon, we chose to list 6 because both `moltres` and `yamask-galar` were tied for fifth place with 36 mentions each.

***

5. **List all the favourite Pokémon in the city with the most unique users.**
**Answer:** Considering that we had over 500 different Pokémon mentioned for that city, we chose to save the result as a text file, located at [/answers/data/favourite_city_pokemon.txt](data/favourite_city_pokemon.txt).

***

6. **Considering only the city of São Paulo, list all the favourite Pokémon by age group and the number of times it appear (in the age group). Consider each age group as a group of 10 years (e.g. 10-19, 20-29, 30-39, etc).**
**Answer:** Since it is not clear how we must present the data, below are the Pokémons that showed up more than once. The full list can be found at [/answers/data/sao_paulo_pokemon_age_group.csv](data/sao_paulo_pokemon_age_group.csv).

|age_group|       pokemon      |favourite|
|---------|:------------------:|--------:|
|    50-59|             poliwag|        2|
|    50-59|             xerneas|        2|
|    50-59|             metapod|        2|
|    50-59|          crabrawler|        2|
|    50-59|              mudkip|        2|
|    40-49|              mothim|        3|
|    40-49|            ludicolo|        2|
|    40-49|               burmy|        2|
|    40-49|             linoone|        2|
|    40-49|            shellder|        2|
|    40-49|           gardevoir|        2|
|    40-49|            dhelmise|        2|
|    40-49|              vulpix|        2|
|    40-49|             hatenna|        2|
|    40-49|       blaziken-mega|        2|
|    30-39|           bounsweet|        3|
|    30-39|            dragalge|        2|
|    30-39|          aromatisse|        2|
|    30-39|            empoleon|        2|
|    30-39|              combee|        2|
|    30-39|            cutiefly|        2|
|    30-39|              spheal|        2|
|    30-39|            venipede|        2|
|    30-39|           exeggcute|        2|
|    30-39|             kommo-o|        2|
|    30-39|            tirtouga|        2|
|    30-39|            greedent|        2|
|    30-39|         gengar-mega|        2|
|    30-39|             milotic|        2|
|    30-39|      deoxys-defense|        2|
|    30-39|greninja-battle-bond|        2|
|    20-29|      wormadam-sandy|        2|
|    20-29|       deoxys-attack|        2|
|    20-29|           cyndaquil|        2|
|    20-29|            virizion|        2|
|    20-29|           obstagoon|        2|
|    20-29|           palossand|        2|
|    20-29|        kyurem-white|        2|
|    20-29|                aron|        2|
|    20-29|            rookidee|        2|
|    20-29|              archen|        2|
|    20-29|          incineroar|        2|
|    20-29|            deerling|        2|
