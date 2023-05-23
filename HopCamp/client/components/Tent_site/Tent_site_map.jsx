import React, { useState, useEffect } from "react";
import "./Tent_site_map.css";
import { GoogleMap, useLoadScript, MarkerF} from "@react-google-maps/api";
import bedIcon from "./assets/bed.jpg";
import tentIcon from "./assets/tent_icon.png";

const tent_sites = [
    {
        id: 1,
        price: "$120",
        icon: tentIcon,
        lat: 38.357545192706645,
        lng: -123.00161904696465,
    },
    {
        id: 2,
        price: "$120",
        icon: tentIcon,
        lat: 38.35720866975814, 
        lng: -123.00195164087064,
    },
    {
        id: 3,
        price: "$120",
        icon: tentIcon,
        lat: 38.35641200618477, 
        lng: -123.00222556527875,
    },
    {
        id: 4,
        price: "$120",
        icon: tentIcon,
        lat: 38.35575318999367,  
        lng: -123.0024773538188,
    },
    {
        id: 5,
        price: "$120",
        icon: tentIcon,
        lat: 38.35561857767026,   
        lng: -123.00382918711409,
    },
    {
        id: 6,
        price: "$120",
        icon: tentIcon,
        lat: 38.35527363244915,    
        lng: -123.00311035512375,
    },
    {
        id: 7,
        price: "$399",
        icon: bedIcon,
        lat: 38.35428226556023,   
        lng: -123.00542735269164,
    },
]

function Tent_Site_Map () {
    // const currentRef= useRef(null);
    // const [isTop,setIsTop] = useState(false);
    const {isLoaded} = useLoadScript({
        googleMapsApiKey: import.meta.env.GOOGLE_MAPS_API_KEYS,
    });

    // useEffect(()=>{
    //     const handleScroll = ()=>{
    //         const rect = currentRef.current.getBoundingClientRect();
    //         const scrollTop = window.pageYOffset || document.documentElmenet
    //     }
    // },[])

    if (!isLoaded) return <div>...Loading</div>;
    return <Map />;
}

function Map () {

    // const uniqueLocations = Array.from(new Set(tent_sites.map((item) => item.name))); // Get unique location names

    // const markers = uniqueLocations.map((location) => {
    //   const locationData = tent_sites.find((item) => item.name === location);
  
    //   return {
    //     id: locationData.id,
    //     position: { lat: locationData.lat, lng: locationData.lng },
    //     title: locationData.name,
    //     icon: locationData.icon,
    //   };
    // });
    
    const mapOptions = {
        zoom: 16,
        center: {
            lat: 38.355812082806466, 
            lng: -123.00242370964042,
        },
        styles: [
            {
                featureType: 'poi',
                stylers: [{ visibility: 'off' }]
            },
            {
                featureType: 'poi.park',
                stylers: [{ visibility: 'on' }]
            },
            {
                featureType: 'landscape',
                elementType: 'geometry',
                stylers: [{ color: '#ebeff1' }],
            } // Set your desired terrain color
        ],
        zoomControl: true,
        maxZoom: 16,
        minZoom: 16,
        streetViewControl: false,
        mapTypeID: "terrain",
        mapTypeControl: false,
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
        <div id="stickyMap">
            <GoogleMap
        options={mapOptions} 
        mapContainerClassName="tent-map-container"
        
        >
            {tent_sites.map((item) => (
                <MarkerF
                key={item.id}
                position={{ lat: item.lat, lng: item.lng }}
                options={{
                    label: {
                        labelAnchor: new google.maps.Point(0, 0),
                        className: "marker-label",
                        color: 'black',
                        fontWeight: 'bold',
                        text: item.price,
                    },
                    icon:{
                        url: item.icon + ".marker-icon",
                        labelOrigin: new google.maps.Point(60, 15),
                        url: item.icon,
                        scaledSize: new window.google.maps.Size(30,30),
                        scale:1,
                    }
                }}
                />
            ))}
            {/* {uniqueLocations.map((location) => {
                 const locationData = tent_sites.find((item) => item.name === location);

                 return (
                    <MarkerF
                    key={locationData.id}
                    position={{ lat: locationData.lat, lng: locationData.lng }}
                    title={locationData.name}
                    options={{
                        icon:{
                            url:locationData.icon,
                            scaledSize: new window.google.maps.Size(10,10),
                            scale:1,
                        }
                    }}
                    />
                );
             })} */}
        </GoogleMap>
        </div>
        
    );
}

export default Tent_Site_Map;
