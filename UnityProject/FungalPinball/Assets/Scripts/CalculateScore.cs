using UnityEngine;

public class CalculateScore : MonoBehaviour
{

    public FloatData score;
    public IntData output;
    
    public void AddHalfScoreOutput()
    {
        float temp = output.Value;
        temp += score.Value / 2;
        output.Value = (int) temp;
    }

    public void AddDividedScoreOutput(int divisor)
    {
        float temp = output.Value;
        temp += score.Value / divisor;
        output.Value = (int) temp;
    }
}
