import SwiftUI

struct BerlinClockView: View {
    
    @State var timeSet = Date()
    
    var body: some View {
        ZStack{
            Color(red: 239/255, green: 239/255, blue: 218/255)
                .ignoresSafeArea(.all, edges: .all)
            VStack{
                HStack{
                    Text("Time is")
                    Text(timeSet, format: Date.FormatStyle(time: .standard))
                }
                TimeBlock()
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(.white)
                        .frame(width: 358, height: 54)
                    DatePicker("Insert Time", selection: $timeSet, displayedComponents: .hourAndMinute)
                        .datePickerStyle(.compact)
                        .environment(\.locale, Locale(identifier: "ru_KZ"))
                        .padding(.horizontal, 50)
                }
                Spacer()
            }
        }
    }
    
    struct TimeBlock: View {
        var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                    .frame(width: 358, height: 312)
                
                // circle
                VStack(spacing:16){
                    Circle()
                        .fill(Color.yellow)
                        .frame(width:56,height:56)
//                        .opacity(0.5)
                    
                    // first row of hours
                    HStack(spacing:10){
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.red)
                            .frame(width: 74, height: 32)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.red)
                            .frame(width: 74, height: 32)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.red)
                            .frame(width: 74, height: 32)
                            .opacity(0.5)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.red)
                            .frame(width: 74, height: 32)
                            .opacity(0.5)
                    }
                    
                    // second row of hours
                    HStack(spacing:10){
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.red)
                            .frame(width: 74, height: 32)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.red)
                            .frame(width: 74, height: 32)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.red)
                            .frame(width: 74, height: 32)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.red)
                            .frame(width: 74, height: 32)
                            .opacity(0.5)
                    }
                    
                    // first row of minutes
                    HStack(spacing:10){
                        Group{
                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color.yellow)
                                .frame(width: 21, height: 32)
                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color.yellow)
                                .frame(width: 21, height: 32)
                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color.red)
                                .frame(width: 21, height: 32)
                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color.yellow)
                                .frame(width: 21, height: 32)
                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color.yellow)
                                .frame(width: 21, height: 32)
                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color.red)
                                .frame(width: 21, height: 32)
                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color.yellow)
                                .frame(width: 21, height: 32)
                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color.yellow)
                                .frame(width: 21, height: 32)
                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color.red)
                                .frame(width: 21, height: 32)
                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color.yellow)
                                .frame(width: 21, height: 32)
                        }
                        RoundedRectangle(cornerRadius: 2)
                            .fill(Color.yellow)
                            .frame(width: 21, height: 32)
                    }
                    
                    // second row of minutes
                    HStack(spacing:10){
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.yellow)
                            .frame(width: 74, height: 32)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.yellow)
                            .frame(width: 74, height: 32)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.yellow)
                            .frame(width: 74, height: 32)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.yellow)
                            .frame(width: 74, height: 32)
                    }
                }
            }
        }
    }
}

struct BerlicClock_Previews: PreviewProvider {
    static var previews: some View {
        BerlinClockView()
    }
}
