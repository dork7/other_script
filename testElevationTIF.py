from osgeo import gdal
import sys

# coordinates to get pixel values for 
points = [( 69.99986111111112, 30.999861111111112  ) ]


gdal.AllRegister()
# open the raster file
# C:/Users/ABC/Desktop/IWMMC/Python/CopiedDtedFiles/E071_N32.DT2
# C:/Users/ABC/Desktop/IWMMC/New-Linux-Files/dted-region-2.tif
#ds = gdal.Open('C:/Users/ABC/Desktop/IWMMC/Python/CopiedDtedFiles/E068_N23.DT2')
ds = gdal.Open('E070_N30.tif')

if ds is None:
    print 'Could not open the raster file'
    sys.exit(1)
else:
    print 'The raster file was opened satisfactorily'

# get georeference info
transform = ds.GetGeoTransform() # (-2493045.0, 30.0, 0.0, 3310005.0, 0.0, -30.0)
xOrigin = transform[0] # -2493045.0
yOrigin = transform[3] # 3310005.0
pixelWidth = transform[1] # 30.0
pixelHeight = transform[5] # -30.0

band = ds.GetRasterBand(1) # 1-based index

data = band.ReadAsArray()
print type(data)
# loop through the coordinates
for point in points:
    x = point[0]
    y = point[1]

    xOffset = int((x - xOrigin) / pixelWidth)
    yOffset = int((y - yOrigin) / pixelHeight)
    print xOffset
    print yOffset
    # get individual pixel values
    value = data[yOffset][xOffset]
    print "X offset = ", xOffset, "-- Y offset = ",yOffset, "-- Value = ",value
