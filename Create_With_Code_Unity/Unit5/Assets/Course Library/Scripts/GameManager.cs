using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class GameManager : MonoBehaviour
{
    public bool isGameOver;
    public List<GameObject> targets;
    public TextMeshProUGUI scoreText;
    public TextMeshProUGUI gameOverText;
    private int score;
    private float spawnRate = 1.0f;
    public Button restartButton;

    private GameObject titleScreen;

    // Start is called before the first frame update
    void Start()
    {
        titleScreen= GameObject.Find("Title Screen");
    }

    public void StartGame(int difficulty)
    {
        spawnRate /= difficulty;
        StartCoroutine(SpawnTarget());
        UpdateScore(0);
        isGameOver=false; 
        titleScreen.gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private IEnumerator SpawnTarget()
    {
        while(!isGameOver)
        {
            yield return new WaitForSeconds(spawnRate);
            int index = Random.Range(0, targets.Count);
            Instantiate(targets[index]);
        }
    }

    public void UpdateScore(int scoreToAdd)
    {
        score += scoreToAdd;
        scoreText.text= "Score: " + score;
    }

    public void GameOver()
    {
        gameOverText.gameObject.SetActive(true);
        isGameOver= true;
        restartButton.gameObject.SetActive(true);
    }
    
    public void RestartGame()
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }
}
