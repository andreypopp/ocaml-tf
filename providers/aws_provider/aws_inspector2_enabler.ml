(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_inspector2_enabler__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_inspector2_enabler__timeouts *)

type aws_inspector2_enabler = {
  account_ids : string list;  (** account_ids *)
  resource_types : string list;  (** resource_types *)
  timeouts : aws_inspector2_enabler__timeouts option;
}
[@@deriving yojson_of]
(** aws_inspector2_enabler *)

let aws_inspector2_enabler ?timeouts ~account_ids ~resource_types
    __resource_id =
  let __resource_type = "aws_inspector2_enabler" in
  let __resource = { account_ids; resource_types; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_inspector2_enabler __resource);
  ()
