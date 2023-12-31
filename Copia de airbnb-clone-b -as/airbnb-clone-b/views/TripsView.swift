//
//  TripsView.swift
//  airbnb-clone-b
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI
import MapKit

struct TripsView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -12.0450947, longitude: -76.9545933), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))

    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea(.all,edges: .top)
            VStack {
                Spacer()
                HStack {
                    ZStack(){
                        Image("item1")
                            .resizable()
                            .frame(width: 120, height:120)
                        VStack(){
                            Image(systemName: "x.circle.fill")
                                .padding(5)
                                .font(.system(size:15))
                                .frame(width:120, alignment:
                                .leading)
                            Spacer()
                        }.frame(width:120, height: 120)
                    }
                    VStack(alignment: .leading, spacing: 10) {
                        
                        HStack(){
                            Text("La Calera, Colombia")
                                .font(.caption)
                                .fontWeight(.semibold)
                            Spacer()
                            Image(systemName: "heart")
                                .font(.system(size: 15))
                        }
                        Spacer()
                        Text("Nov 19 - 24")
                            .font(.caption)
                            .fontWeight(.light)
                        HStack(){
                            Text("S/ 268 night")
                                .font(.caption)
                                .fontWeight(.semibold)
                            
                            Spacer()
                            Image(systemName: "star.fill")
                                .font(.system(size:10))
                            Text("4.91")
                                .fontWeight(.light)
                                .font(.caption)
                        }

                    }
                    .padding(.vertical)
                    Spacer()
                }
                .frame(height: 120)
                .background(.white)
            }
            .padding()
        }
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
