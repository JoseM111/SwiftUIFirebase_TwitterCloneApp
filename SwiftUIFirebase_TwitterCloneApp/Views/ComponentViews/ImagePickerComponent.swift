import SwiftUI

struct ImagePickerComponent: UIViewControllerRepresentable {
    // MARK: - ∆@PROPERTIES
    //∆..............................
    @Binding var uiImage: UIImage?
    @Environment(\.presentationMode) var mode
    //∆..............................
    
    //∆.....................................................
    
    ///∆ ........... Class Methods ...........
    /// ∆ Actually constructing the `Image Picker`
    func makeUIViewController(context: Context) -> some UIViewController {
        //∆..........
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        
        return picker
    }
    
    ///  • Creates the custom instance that you use to communicate changes from
    ///    your view controller to other parts of your SwiftUI interface.
    ///  ............
    func makeCoordinator() -> Coordinator {
        //∆..........
        Coordinator(self)
    }
    
    ///  • Will not be used but must conform to the protocol 🤷🏾‍♂️
    ///  ............
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //∆..........[USELESS]
    }
}

///`∆.....................................................`
///  • Functionality or logic for the above struct
///  ............
extension ImagePickerComponent {
    
    //∆.....................................................
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        //∆..........
        let parent: ImagePickerComponent
        
        /// ∆ Initializer
        //∆.................................
        init(_ parent: ImagePickerComponent) {
            self.parent = parent
        }
        //∆.................................
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            //∆..........
            guard let image = info[.originalImage] as? UIImage else { return }
            parent.uiImage = image
            parent.mode.wrappedValue.dismiss()
        }
        
    }/// ∆ END ImagePicker
    //∆.....................................................
    
}

