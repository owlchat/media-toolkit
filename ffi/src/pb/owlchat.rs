#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CalculateBlurhash {
    #[prost(string, tag = "1")]
    pub image_path: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetImageDimensions {
    #[prost(string, tag = "1")]
    pub image_path: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EncodeImageAsJpeg {
    #[prost(string, tag = "1")]
    pub image_path: ::prost::alloc::string::String,
    #[prost(uint32, tag = "2")]
    pub quality: u32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Request {
    #[prost(oneof = "request::Body", tags = "1, 2, 3")]
    pub body: ::core::option::Option<request::Body>,
}
/// Nested message and enum types in `Request`.
pub mod request {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Body {
        #[prost(message, tag = "1")]
        BlurhashEncode(super::CalculateBlurhash),
        #[prost(message, tag = "2")]
        ImageDimensions(super::GetImageDimensions),
        #[prost(message, tag = "3")]
        ImageEncode(super::EncodeImageAsJpeg),
    }
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Blurhash {
    #[prost(string, tag = "1")]
    pub value: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ImageDimensions {
    #[prost(uint32, tag = "1")]
    pub width: u32,
    #[prost(uint32, tag = "2")]
    pub height: u32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct JpegImage {
    #[prost(bytes = "vec", tag = "1")]
    pub value: ::prost::alloc::vec::Vec<u8>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Response {
    #[prost(oneof = "response::Body", tags = "1, 2, 3, 4")]
    pub body: ::core::option::Option<response::Body>,
}
/// Nested message and enum types in `Response`.
pub mod response {
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Error {
        #[prost(string, tag = "1")]
        pub message: ::prost::alloc::string::String,
        #[prost(enumeration = "error::Kind", tag = "2")]
        pub kind: i32,
    }
    /// Nested message and enum types in `Error`.
    pub mod error {
        #[derive(
            Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration,
        )]
        #[repr(i32)]
        pub enum Kind {
            Unknown = 0,
            MissingRequestBody = 1,
            InvalidFilePath = 2,
            FailedToLoadImage = 3,
            JpegEncodingFailed = 4,
        }
    }
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Body {
        #[prost(message, tag = "1")]
        Error(Error),
        #[prost(message, tag = "2")]
        Blurhash(super::Blurhash),
        #[prost(message, tag = "3")]
        ImageDimensions(super::ImageDimensions),
        #[prost(message, tag = "4")]
        JpegImage(super::JpegImage),
    }
}
