(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_virtual_mfa_device = {
  path : string option; [@option]  (** path *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_mfa_device_name : string;  (** virtual_mfa_device_name *)
}
[@@deriving yojson_of]
(** aws_iam_virtual_mfa_device *)

let aws_iam_virtual_mfa_device ?path ?tags ~virtual_mfa_device_name
    __resource_id =
  let __resource_type = "aws_iam_virtual_mfa_device" in
  let __resource = { path; tags; virtual_mfa_device_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_virtual_mfa_device __resource);
  ()
