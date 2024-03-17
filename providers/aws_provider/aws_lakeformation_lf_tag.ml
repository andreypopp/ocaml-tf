(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lakeformation_lf_tag = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** aws_lakeformation_lf_tag *)

let aws_lakeformation_lf_tag ?catalog_id ?id ~key ~values
    __resource_id =
  let __resource_type = "aws_lakeformation_lf_tag" in
  let __resource = { catalog_id; id; key; values } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lakeformation_lf_tag __resource);
  ()
