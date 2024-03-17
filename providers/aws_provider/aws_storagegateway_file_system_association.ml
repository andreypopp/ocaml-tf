(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_storagegateway_file_system_association__cache_attributes = {
  cache_stale_timeout_in_seconds : float option; [@option]
      (** cache_stale_timeout_in_seconds *)
}
[@@deriving yojson_of]
(** aws_storagegateway_file_system_association__cache_attributes *)

type aws_storagegateway_file_system_association = {
  audit_destination_arn : string option; [@option]
      (** audit_destination_arn *)
  gateway_arn : string;  (** gateway_arn *)
  location_arn : string;  (** location_arn *)
  password : string;  (** password *)
  tags : (string * string) list option; [@option]  (** tags *)
  username : string;  (** username *)
  cache_attributes :
    aws_storagegateway_file_system_association__cache_attributes list;
}
[@@deriving yojson_of]
(** aws_storagegateway_file_system_association *)

let aws_storagegateway_file_system_association ?audit_destination_arn
    ?tags ~gateway_arn ~location_arn ~password ~username
    ~cache_attributes __resource_id =
  let __resource_type =
    "aws_storagegateway_file_system_association"
  in
  let __resource =
    {
      audit_destination_arn;
      gateway_arn;
      location_arn;
      password;
      tags;
      username;
      cache_attributes;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_file_system_association __resource);
  ()
