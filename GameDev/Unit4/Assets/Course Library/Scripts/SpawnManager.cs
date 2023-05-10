using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnManager : MonoBehaviour
{
    //get enemy prefab
    public GameObject enemyPrefab;

    //set spwan range in which enemy can spawn
    private float spawnRange = 9.0f;
    // Start is called before the first frame update
    void Start()
    {
        //create enemy
        Instantiate(enemyPrefab, GenerateSpawnPosition(), enemyPrefab.transform.rotation);
    }
    private Vector3 GenerateSpawnPosition()
    {
        //get the spwan pos in a random range of numbers
        float spawnPosX = Random.Range(-spawnRange, spawnRange);
        float spawnPosZ = Random.Range(-spawnRange, spawnRange);
        Vector3 randomPos = new Vector3(spawnPosX, 0, spawnPosZ);
        //return the position
        return randomPos;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
