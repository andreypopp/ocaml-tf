(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_licensemanager_grant = {
  allowed_operations : string list;
      (** Allowed operations for the grant. This is a subset of the allowed operations on the license. *)
  id : string option; [@option]  (** id *)
  license_arn : string;  (** License ARN. *)
  name : string;  (** Name of the grant. *)
  principal : string;
      (** The grantee principal ARN. The target account for the grant in the form of the ARN for an account principal of the root user. *)
}
[@@deriving yojson_of]
(** aws_licensemanager_grant *)

let aws_licensemanager_grant ?id ~allowed_operations ~license_arn
    ~name ~principal __resource_id =
  let __resource_type = "aws_licensemanager_grant" in
  let __resource =
    { allowed_operations; id; license_arn; name; principal }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_licensemanager_grant __resource);
  ()
