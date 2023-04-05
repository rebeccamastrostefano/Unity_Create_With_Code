using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Score : MonoBehaviour

{
    public int points = 0;
    public static Score Instance;
    // Start is called before the first frame update
    void Start()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(this);
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
