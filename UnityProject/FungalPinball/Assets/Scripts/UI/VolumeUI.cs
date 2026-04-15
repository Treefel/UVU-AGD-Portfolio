using UnityEngine;
using TMPro;
using UnityEngine.Audio;
using UnityEngine.UI;

public class VolumeUI : MonoBehaviour
{
    public AudioMixer mixer;
    public GameObject window;
    public Slider masterSlider;
    public Slider sfxSlider;
    public Slider musicSlider;

    void Start ()
    {
        window.SetActive(false);
        // do we have saved volume player prefs?
        if(PlayerPrefs.HasKey("MasterVolume"))
        {
            Debug.Log("has master key");
            // set the mixer volume levels based on the saved player prefs
            mixer.SetFloat("MasterVolume", PlayerPrefs.GetFloat("MasterVolume"));
            mixer.SetFloat("SFXVolume", PlayerPrefs.GetFloat("SFXVolume"));
            mixer.SetFloat("MusicVolume", PlayerPrefs.GetFloat("MusicVolume"));
            SetSliders();
        }
        // otherwise just set the sliders
        else
        {
            Debug.Log("no master key");
            SetSliders();
        }
    }

    void SetSliders ()
    {
        Debug.Log("master value: " + masterSlider.value);
        masterSlider.value = PlayerPrefs.GetFloat("MasterVolume");
        sfxSlider.value = PlayerPrefs.GetFloat("SFXVolume");
        musicSlider.value = PlayerPrefs.GetFloat("MusicVolume");
    }

    public void UpdateMaster()
    {
        Debug.Log("master value: " + masterSlider.value);
        mixer.SetFloat("MasterVolume", masterSlider.value);
        PlayerPrefs.SetFloat("MasterVolume", masterSlider.value);
    }

    public void UpdateSFX()
    {
        mixer.SetFloat("SFXVolume", sfxSlider.value);
        PlayerPrefs.SetFloat("SFXVolume", sfxSlider.value);
    }

    public void UpdateMusic()
    {
        mixer.SetFloat("MusicVolume", musicSlider.value);
        PlayerPrefs.SetFloat("MusicVolume", musicSlider.value);
    }

    public void ToggleWindow()
    {
        window.SetActive(!window.activeInHierarchy);
    }
}
