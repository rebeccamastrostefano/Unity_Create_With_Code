using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnManager : MonoBehaviour
{
    public GameObject[] animalPrefabs;
    //public int animalIndex;
    private float spawnRangeX = 15;
    private float spawnPosZ = 20;

    private float startDelay = 2.0f;
    private float spawnInterval = 3.0f; 

    // Start is called before the first frame update
    void Start()
    {
        // call spawn function every time interval
        InvokeRepeating("SpawnRandomAnimal", startDelay, spawnInterval);
    }

    // Update is called once per frame
    void Update()
    {
        // if press S call spawn function
        if (Input.GetKeyDown(KeyCode.S))
        {
            SpawnRandomAnimal();
        }
    }

    // Function to spawn random animal
    void SpawnRandomAnimal()
    {
        int animalIndex = Random.Range(0, animalPrefabs.Length);
        float spawnPosX = Random.Range(-spawnRangeX, spawnRangeX);
        Instantiate(animalPrefabs[animalIndex], new Vector3(spawnPosX, 0, spawnPosZ), animalPrefabs[animalIndex].transform.rotation);
    }
}
