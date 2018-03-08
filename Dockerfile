# COMMENTS
# Import the rocker/rstudio base image

FROM rocker/rstudio

# Create a working directory
# and import data into the image

WORKDIR /home/rstudio/markets
ADD ./data/farmers_markets.csv /home/rstudio/markets/

# Run updates
# Also, set permissions on data directory
# per https://github.com/rocker-org/rocker/issues/246

RUN apt-get update
RUN chown -R rstudio /home/rstudio/markets

# Expose port 8787 to the host machine

EXPOSE 8787