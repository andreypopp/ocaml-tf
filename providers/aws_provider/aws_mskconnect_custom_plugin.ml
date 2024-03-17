(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_mskconnect_custom_plugin__location__s3 = {
  bucket_arn : string prop;  (** bucket_arn *)
  file_key : string prop;  (** file_key *)
  object_version : string prop option; [@option]
      (** object_version *)
}
[@@deriving yojson_of]
(** aws_mskconnect_custom_plugin__location__s3 *)

type aws_mskconnect_custom_plugin__location = {
  s3 : aws_mskconnect_custom_plugin__location__s3 list;
}
[@@deriving yojson_of]
(** aws_mskconnect_custom_plugin__location *)

type aws_mskconnect_custom_plugin__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_mskconnect_custom_plugin__timeouts *)

type aws_mskconnect_custom_plugin = {
  content_type : string prop;  (** content_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  location : aws_mskconnect_custom_plugin__location list;
  timeouts : aws_mskconnect_custom_plugin__timeouts option;
}
[@@deriving yojson_of]
(** aws_mskconnect_custom_plugin *)

let aws_mskconnect_custom_plugin ?description ?id ?timeouts
    ~content_type ~name ~location __resource_id =
  let __resource_type = "aws_mskconnect_custom_plugin" in
  let __resource =
    { content_type; description; id; name; location; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_mskconnect_custom_plugin __resource);
  ()
