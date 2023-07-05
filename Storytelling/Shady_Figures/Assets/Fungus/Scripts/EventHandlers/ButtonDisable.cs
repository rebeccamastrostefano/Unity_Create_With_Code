using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ButtonDisable : MonoBehaviour
{
    private Button button;
    public Sprite buttonInactive;
    public Sprite buttonActive;
    public bool endDay;
    
    // Start is called before the first frame update
    void Start()
    {
        button = GetComponent<Button>();
    }

    // Update is called once per frame
    void Update()
    {
        if (endDay)
        {
            button.enabled = true;
        }
        else
        {
            button.enabled = false;
        }
    }
}
