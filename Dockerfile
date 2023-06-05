# Create base image with pytest image
FROM databricksdocs/pytest:v0.1.4

# Clone the sample test framework repo from github
RUN git clone https://github.com/chrisdavis181/test-framework.git

# Change directory to be directory of cloned test framework
RUN cd test-framework

# Upgrade pip3 and install seleniumbase
RUN pip3 install --upgrade pip && pip3 install seleniumbase

# Install browser drivers
RUN sbase get chromedriver && sbase get geckodriver && \
    sbase get edgedriver
