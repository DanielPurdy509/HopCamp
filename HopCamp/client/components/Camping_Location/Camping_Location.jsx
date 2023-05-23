import React, { useState, useEffect } from "react";
import "./Camping_Location.css";
import { GoogleMap, useLoadScript, MarkerF} from "@react-google-maps/api";
import CustomMarker from "./assets/campsite_marker.png";

function Camping_Location () {
    
    const {isLoaded} = useLoadScript({
        googleMapsApiKey: import.meta.env.GOOGLE_MAPS_API_KEY,
    });

    if (!isLoaded) return <div>...Loading</div>;
    return <Map />;
}

function Map () {
    
    const mapOptions = {
        zoom: 12,
        center: {
            lat: 38.3530,
            lng: -123.0024
        },
        styles: [
            {
              featureType: 'poi',
              stylers: [{ visibility: 'off' }]
            },
            {
              featureType: 'poi.park',
              stylers: [{ visibility: 'on' }]
            }
        ],
        zoomControl: true,
        maxZoom: 12,
        minZoom: 4,
        streetViewControl: false,
        mapTypeControl: false,
        mapTypeID: "terrain",
        fullscreenControl: false,
        scaleControl: false,
        rotateControl: false,
        draggableCursor: 'default'
    }

    const center = mapOptions.center;
    console.log(center);

    const [markerSize, setMarkerSize] = useState({
        width: 150, // Replace with your desired width in pixels
        height: 150, // Replace with your desired height in pixels
    });

    return(
        <GoogleMap
        options={mapOptions} 
        mapContainerClassName="map-container"
        >
            <MarkerF 
            position= {center}
            anchorPoint={new window.google.maps.Point(0, 0)}
            options={{
                text:"Salmon Creek Ranch",
                icon: {
                    url: CustomMarker,
                    scaledSize: new window.google.maps.Size(markerSize.width, markerSize.height),
                    scale:1,
                },
            }} 
            />
        </GoogleMap>
    );
}

export default Camping_Location;
