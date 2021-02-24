#!/bin/bash

# grab the newslater 'news'
#url = 'https://raw.githubusercontent.com/shapeblue/cloudstack-www/master/data/newsletter.txt'
#urllib.request.urlretrieve(url, '/tmp/newsletter.txt')

# grab env vars
echo "creating conf file"
python /opt/create_config.py

# run the PR and Commit generation
echo "Running analyser"
config_file="/opt/conf.txt"
python /opt/acs_report_prs.py --config=$config_file



# combine files
#filenames = ["/tmp/newsletter.txt", "/tmp/prs.txt"]
#final_file = f"{working_dir}/newsletter.txt"
#filename='/tmp/prs.rst'

#with open(final_file, "w") as outfile:
    #for filename in filenames:
#with open(filename) as infile:
#    contents = infile.read()
#    outfile.write(contents)

# cleanup
#os.remove("/tmp/newsletter.txt")
#os.remove(str(filename))

