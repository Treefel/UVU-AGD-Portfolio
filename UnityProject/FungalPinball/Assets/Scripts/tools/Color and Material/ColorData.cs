using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

[CreateAssetMenu(menuName = "Single Variables/ColorData")]
public class ColorData : NameId
{
    [SerializeField] private Color value = Color.blue;

    public UnityEvent onValueChanged;

    public Color Value
    {
        get => value;
        set
        {
            this.value = value;
            onValueChanged?.Invoke();
        }
    }

    public void ChangeColor(Object component)
    {
        switch (component)
        {
            case SpriteRenderer spriteRenderer:
                spriteRenderer.color = Value;
                break;
            case Material material:
                material.color = Value;
                break;
            case Image image:
                image.color = Value;
                break;
            case Text text:
                text.color = Value;
                break;
        }
    }

    public void ChangeColor(Color color)
    {
        Value = color;
    }

    public void RotateColor(Vector3DataCollection col)
    {
        if(col.index <= col.vector3Datas.Count - 2) col.index += 1;
        else col.index = 0;
        int index = col.index;
        Vector3Data c = col.vector3Datas[index];

        Value = new Color(c.value.x, c.value.y, c.value.z);
    }
}