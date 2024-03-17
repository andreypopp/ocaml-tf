(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_storagegateway_upload_buffer = {
  disk_id : string option; [@option]  (** disk_id *)
  disk_path : string option; [@option]  (** disk_path *)
  gateway_arn : string;  (** gateway_arn *)
  id : string option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_storagegateway_upload_buffer *)

let aws_storagegateway_upload_buffer ?disk_id ?disk_path ?id
    ~gateway_arn __resource_id =
  let __resource_type = "aws_storagegateway_upload_buffer" in
  let __resource = { disk_id; disk_path; gateway_arn; id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_upload_buffer __resource);
  ()
