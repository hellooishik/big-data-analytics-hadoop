import java.io.IOException;
import org.apache.hadoop.io.*;
import org.apache.hadoop.mapreduce.Mapper;

public class RatingMapper extends Mapper<LongWritable, Text, Text, IntWritable> {

    public void map(LongWritable key, Text value, Context context)
            throws IOException, InterruptedException {

        String[] fields = value.toString().split(",");
        if (fields.length > 5 && !fields[4].equals("star_rating")) {
            try {
                context.write(new Text(fields[3]),
                              new IntWritable(Integer.parseInt(fields[5])));
            } catch (NumberFormatException e) {
                // Ignore malformed lines
            }
        }
    }
}
