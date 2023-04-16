using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnManager : MonoBehaviour
{
    public GameObject[] animalPrefabs;
    //public int animalIndex;
    private float spawnRangeX = 15;
    private float spawnPosTop = 20;
    private float spawnRangeZTop = 15;
    private float spawnRangeZBottom = 1;
    private float spawnPosSides = 30;

    private float startDelay = 2.0f;
    private float spawnInterval = 3.0f; 

    // Start is called before the first frame update
    void Start()
    {
        // call spawn function every time interval
        InvokeRepeating("SpawnRandomAnimalTop", startDelay, spawnInterval);
        InvokeRepeating("SpawnRandomAnimalLeft", startDelay, spawnInterval);
        InvokeRepeating("SpawnRandomAnimalRight", startDelay, spawnInterval);
    }

    // Update is called once per frame
    void Update()
    {

    }

    // Function to spawn random animal
    void SpawnRandomAnimalTop()
    {
        int animalIndex = Random.Range(0, animalPrefabs.Length);
        float spawnPosX = Random.Range(-spawnRangeX, spawnRangeX);
        Instantiate(animalPrefabs[animalIndex], new Vector3(spawnPosX, 0, spawnPosTop), Quaternion.Euler(0, 180, 0));
    }

    void SpawnRandomAnimalLeft()
    {
        SpawnRandomAnimalSides(-1);
    }

    void SpawnRandomAnimalRight()
    {
        SpawnRandomAnimalSides(1);
    }

    void SpawnRandomAnimalSides(int direction)
    {
        int animalIndex = Random.Range(0, animalPrefabs.Length);
        float spawnPosZ = Random.Range(spawnRangeZBottom, spawnRangeZTop);
        Instantiate(animalPrefabs[animalIndex], new Vector3(direction * spawnPosSides, 0, spawnPosZ), Quaternion.Euler(0, direction * -90, 0));
    }
}
