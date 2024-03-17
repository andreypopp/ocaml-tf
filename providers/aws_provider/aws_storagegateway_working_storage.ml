(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_storagegateway_working_storage = {
  disk_id : string;  (** disk_id *)
  gateway_arn : string;  (** gateway_arn *)
  id : string option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_storagegateway_working_storage *)

let aws_storagegateway_working_storage ?id ~disk_id ~gateway_arn
    __resource_id =
  let __resource_type = "aws_storagegateway_working_storage" in
  let __resource = { disk_id; gateway_arn; id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_working_storage __resource);
  ()
