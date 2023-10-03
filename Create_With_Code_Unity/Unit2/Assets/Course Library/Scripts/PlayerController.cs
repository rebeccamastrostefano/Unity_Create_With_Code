using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour

{
    public float horizontalInput; 
    public float verticalInput;
    public float speed = 10.0f;
    public float xRange = 10.0f;
    public float zRangetop = 10.0f;
    public float zRangebottom = 0.0f;

    public GameObject projectilePrefab;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        // Move player horizontally
        horizontalInput = Input.GetAxis ("Horizontal");
        transform.Translate(Vector3.right * horizontalInput * Time.deltaTime * speed);

        verticalInput = Input.GetAxis ("Vertical");
        transform.Translate(Vector3.forward * verticalInput * Time.deltaTime * speed);

        // Keep player inbound
        if (transform.position.x < -xRange) 
        {
            transform.position = new Vector3(-xRange, transform.position.y, transform.position.z);
        }
        
        if (transform.position.x > xRange) 
        {
            transform.position = new Vector3(xRange, transform.position.y, transform.position.z);
        }

        if (transform.position.z < -zRangebottom) 
        {
            transform.position = new Vector3(transform.position.x, transform.position.y, -zRangebottom);
        }
        
        if (transform.position.z > zRangetop) 
        {
            transform.position = new Vector3(transform.position.x, transform.position.y, zRangetop);
        }

        // Launch projectile from player position
        if (Input.GetKeyDown(KeyCode.Space))
        {
            //Debug.Log("Pressed!");

            
            Instantiate(projectilePrefab, transform.position, projectilePrefab.transform.rotation);

        }
    }
}
