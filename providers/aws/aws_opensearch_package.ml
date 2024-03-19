(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type package_source = {
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key : string prop;  (** s3_key *)
}
[@@deriving yojson_of]
(** package_source *)

type aws_opensearch_package = {
  id : string prop option; [@option]  (** id *)
  package_description : string prop option; [@option]
      (** package_description *)
  package_name : string prop;  (** package_name *)
  package_type : string prop;  (** package_type *)
  package_source : package_source list;
}
[@@deriving yojson_of]
(** aws_opensearch_package *)

let package_source ~s3_bucket_name ~s3_key () : package_source =
  { s3_bucket_name; s3_key }

let aws_opensearch_package ?id ?package_description ~package_name
    ~package_type ~package_source () : aws_opensearch_package =
  {
    id;
    package_description;
    package_name;
    package_type;
    package_source;
  }

type t = {
  available_package_version : string prop;
  id : string prop;
  package_description : string prop;
  package_id : string prop;
  package_name : string prop;
  package_type : string prop;
}

let register ?tf_module ?id ?package_description ~package_name
    ~package_type ~package_source __resource_id =
  let __resource_type = "aws_opensearch_package" in
  let __resource =
    aws_opensearch_package ?id ?package_description ~package_name
      ~package_type ~package_source ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_package __resource);
  let __resource_attributes =
    ({
       available_package_version =
         Prop.computed __resource_type __resource_id
           "available_package_version";
       id = Prop.computed __resource_type __resource_id "id";
       package_description =
         Prop.computed __resource_type __resource_id
           "package_description";
       package_id =
         Prop.computed __resource_type __resource_id "package_id";
       package_name =
         Prop.computed __resource_type __resource_id "package_name";
       package_type =
         Prop.computed __resource_type __resource_id "package_type";
     }
      : t)
  in
  __resource_attributes
