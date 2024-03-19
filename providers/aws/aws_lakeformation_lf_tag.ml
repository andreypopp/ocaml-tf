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

let aws_lakeformation_lf_tag ?catalog_id ?id ~key ~values () :
    aws_lakeformation_lf_tag =
  { catalog_id; id; key; values }

type t = {
  catalog_id : string prop;
  id : string prop;
  key : string prop;
  values : string list prop;
}

let register ?tf_module ?catalog_id ?id ~key ~values __resource_id =
  let __resource_type = "aws_lakeformation_lf_tag" in
  let __resource =
    aws_lakeformation_lf_tag ?catalog_id ?id ~key ~values ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lakeformation_lf_tag __resource);
  let __resource_attributes =
    ({
       catalog_id =
         Prop.computed __resource_type __resource_id "catalog_id";
       id = Prop.computed __resource_type __resource_id "id";
       key = Prop.computed __resource_type __resource_id "key";
       values = Prop.computed __resource_type __resource_id "values";
     }
      : t)
  in
  __resource_attributes
