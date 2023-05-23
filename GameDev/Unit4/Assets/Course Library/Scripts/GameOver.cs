using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameOver : MonoBehaviour
{
    private GameObject player;
    private GameObject gameOver;
    // Start is called before the first frame update
    void Start()
    {
        player = GameObject.Find("Player");
    }

    // Update is called once per frame
    void Update()
    {
        if (player.GetComponent<PlayerController>().isGameOver)
        {
          gameOver = GameObject.Find("Game Over");
          gameOver.gameObject.SetActive(true);
          Debug.Log("ok");
        }
    }
}
