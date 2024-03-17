(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearch_package__package_source = {
  s3_bucket_name : string;  (** s3_bucket_name *)
  s3_key : string;  (** s3_key *)
}
[@@deriving yojson_of]
(** aws_opensearch_package__package_source *)

type aws_opensearch_package = {
  id : string option; [@option]  (** id *)
  package_description : string option; [@option]
      (** package_description *)
  package_name : string;  (** package_name *)
  package_type : string;  (** package_type *)
  package_source : aws_opensearch_package__package_source list;
}
[@@deriving yojson_of]
(** aws_opensearch_package *)

let aws_opensearch_package ?id ?package_description ~package_name
    ~package_type ~package_source __resource_id =
  let __resource_type = "aws_opensearch_package" in
  let __resource =
    {
      id;
      package_description;
      package_name;
      package_type;
      package_source;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_package __resource);
  ()
