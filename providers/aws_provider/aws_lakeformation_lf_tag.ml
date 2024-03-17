(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_lakeformation_lf_tag = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_lakeformation_lf_tag *)

let aws_lakeformation_lf_tag ~key ~values __resource_id =
  let __resource_type = "aws_lakeformation_lf_tag" in
  let __resource = { key; values } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lakeformation_lf_tag __resource);
  ()
