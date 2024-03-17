(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_storagegateway_upload_buffer = {
  disk_id : string prop option; [@option]  (** disk_id *)
  disk_path : string prop option; [@option]  (** disk_path *)
  gateway_arn : string prop;  (** gateway_arn *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_storagegateway_upload_buffer *)

type t = {
  disk_id : string prop;
  disk_path : string prop;
  gateway_arn : string prop;
  id : string prop;
}

let aws_storagegateway_upload_buffer ?disk_id ?disk_path ?id
    ~gateway_arn __resource_id =
  let __resource_type = "aws_storagegateway_upload_buffer" in
  let __resource =
    ({ disk_id; disk_path; gateway_arn; id }
      : aws_storagegateway_upload_buffer)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_upload_buffer __resource);
  let __resource_attributes =
    ({
       disk_id =
         Prop.computed __resource_type __resource_id "disk_id";
       disk_path =
         Prop.computed __resource_type __resource_id "disk_path";
       gateway_arn =
         Prop.computed __resource_type __resource_id "gateway_arn";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
