using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

[RequireComponent(typeof(Image))]
public class ImageBehaviour : MonoBehaviour
{
    private Image imageObj;
    // private Graphic graphicObj;
    public GameAction updateAction;
    public UnityEvent startEvent, updateImageEvent;
    
    private void Start()
    {
        imageObj = GetComponent<Image>(); 
        // graphicObj = GetComponent<Graphic>();
        if (updateAction != null) updateAction.RaiseNoArgs += OnUpdate;
        startEvent.Invoke();
    }

    public void OnUpdate()
    {
        updateImageEvent.Invoke();
    }

    public void UpdateWithFloatData(FloatData dataObj)
    {
        imageObj.fillAmount = dataObj.Value;
    }

    public void ChangeColor(Color c)
    {
        imageObj.color = c;
    }
    public void ChangeColor(ColorData c)
    {
        imageObj.color = new Color(c.Value.r, c.Value.g, c.Value.b, 255);
    }
}