using UnityEngine;
using UnityEngine.UI;
using System.Diagnostics;

public class PauseGame : MonoBehaviour
{
    private bool isPaused = false;
    public void PauseToggle()
    {
        if (!isPaused)
        {
            isPaused = true;
            UnityEngine.Debug.Log("Pausing");
            Time.timeScale = 0f;
            AudioListener.pause = true;
        }
        else
        {
            isPaused = false;
            UnityEngine.Debug.Log("Unpausing");
            Time.timeScale = 1f;
            AudioListener.pause = false;
        }
        
    }
     
}
