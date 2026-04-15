#!/bin/bash
# Download all BOSFA Properties images for self-hosting
# Run this script from the project root directory

echo "Downloading BOSFA Properties images..."

mkdir -p public/images/media

BASE="https://media.base44.com/images/public/69d977ec529fc92130894bcb"
WP="https://bosfaproperties.com/wp-content/uploads"

# Logo
curl -sL -o public/images/logo.png "${BASE}/d519cda60_logo-propiedades.png"

# Property main images
curl -sL -o public/images/courthouse-corporate-center.jpg "${BASE}/f81b4e628_Courthouse_Corporate_Center_01.jpg"
curl -sL -o public/images/gardens-at-buffalo.jpg "${BASE}/d0fc16130_Gardens_at_Buffalo_01.jpg"
curl -sL -o public/images/bayview-estates.jpg "${BASE}/48cbfe322_Bayview_Estates_01.jpg"
curl -sL -o public/images/rivoli-house.jpg "${BASE}/759a6751e_Rivoli_House_01.jpg"
curl -sL -o public/images/james-burrell-senior-gardens.jpg "${BASE}/8a03e9b8c_James_Burrell_Senior_Gardens_01.jpg"
curl -sL -o public/images/pearsall-gardens.jpg "${BASE}/0775c7444_Pearsall_Gardens_01.jpg"
curl -sL -o public/images/beauty-on-central.jpg "${BASE}/e3ae0f61d_Beauty_on_Central_01.jpg"
curl -sL -o public/images/beach-20th-towers.jpg "${BASE}/184580f68_Beach_20th_Towers_01.jpg"
curl -sL -o public/images/cornaga-gardens.jpg "${BASE}/1494b5a78_Cornaga_Gardens_01.jpg"
curl -sL -o public/images/prospect-townhomes.jpg "${BASE}/95fcbb9da_Prospect_Townhomes_01.jpg"
curl -sL -o public/images/hilton-gardens.jpg "${BASE}/f57868330_Hilton_Gardens_01.jpg"
curl -sL -o public/images/kelsey-on-park.jpg "${BASE}/a6f827960_Kelsey_on_Park_01.jpg"
curl -sL -o public/images/clinton-manor.jpg "${BASE}/50c1034e6_Clinton_Manor_01.jpg"
curl -sL -o public/images/front-st-manor.jpg "${BASE}/2a9138a24_Front_St_Manor_01.jpg"
curl -sL -o public/images/franklin-senior-gardens.jpg "${BASE}/dd4561e18_Franklin_Senior_Gardens_01.jpg"
curl -sL -o public/images/freeport-gardens.jpg "${BASE}/bef7daefc_Freeport_Gardens_01.jpg"
curl -sL -o public/images/fulton-plaza.jpg "${BASE}/e0b82ab6b_Fulton_Plaza_01.jpg"
curl -sL -o public/images/nassau-plaza.jpg "${BASE}/c52e4d9d8_Nassau_Plaza_01.jpg"

# About page hero
curl -sL -o public/images/about-hero.jpg "${BASE}/c8010af3f_WhatsAppImage2026-04-14at181351.jpg"

# Investment building
curl -sL -o public/images/investment-building.jpeg "${BASE}/6859748cb_WhatsAppImage2026-04-14at180856.jpeg"

# Media article images
curl -sL -o public/images/media/gardens-buffalo-construction.jpg "${WP}/2025/01/20250110-133217-c6c-FRE_Development_1-9_A.jpg"
curl -sL -o public/images/media/bond-financing.png "${WP}/2025/01/image.png"
curl -sL -o public/images/media/demolition-freeport.jpeg "${WP}/2024/04/gds.jpeg"
curl -sL -o public/images/media/freeport-rendering.jpg "${WP}/2023/08/Buffalo-Freeport-rendering-875x548-1.jpg"
curl -sL -o public/images/media/housing-transformed.jpeg "${WP}/2023/04/WhatsApp-Image-2023-06-21-at-11.49.02-AM-1-1024x576.jpeg"
curl -sL -o public/images/media/moxey-rigby.jpg "${WP}/2023/06/20230330-125118-FRE-3-30-Moxey-95907A--1024x568.jpg"
curl -sL -o public/images/media/multifamily-new.png "${WP}/2023/01/Screen-Shot-2023-01-23-at-12.41.53-PM-1.png"
curl -sL -o public/images/media/hempstead-acquisition.png "${WP}/2023/01/Screen-Shot-2023-01-06-at-8.24.35-PM-1024x541.png"
curl -sL -o public/images/media/senior-housing.jpg "${WP}/2022/11/toleac221004_photos.jpg"
curl -sL -o public/images/media/lot26-senior.jpg "${WP}/2022/11/WhatsApp-Image-2022-11-17-at-2.08.09-PM-1024x717.jpeg"
curl -sL -o public/images/media/central-islip.jpg "${WP}/2022/10/COURTHOUSE-CORPORATE-CENTER-01.jpg"
curl -sL -o public/images/media/westbury-multifamily.jpg "${WP}/2022/01/Prospect-01.jpg"
curl -sL -o public/images/media/hempstead-rental.jpg "${WP}/2022/01/Hilton-01.jpg"

echo ""
echo "Download complete! Images saved to public/images/"
echo "Total files downloaded:"
find public/images -type f | wc -l

echo ""
echo "Now update src/data/images.js to use local paths instead of remote URLs."
echo "Replace the BASE and WP URLs with '/images/' prefix paths."
