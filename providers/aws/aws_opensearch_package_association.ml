(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearch_package_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_opensearch_package_association__timeouts *)

type aws_opensearch_package_association = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  package_id : string prop;  (** package_id *)
  timeouts : aws_opensearch_package_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearch_package_association *)

type t = {
  domain_name : string prop;
  id : string prop;
  package_id : string prop;
  reference_path : string prop;
}

let aws_opensearch_package_association ?id ?timeouts ~domain_name
    ~package_id __resource_id =
  let __resource_type = "aws_opensearch_package_association" in
  let __resource =
    ({ domain_name; id; package_id; timeouts }
      : aws_opensearch_package_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_package_association __resource);
  let __resource_attributes =
    ({
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       package_id =
         Prop.computed __resource_type __resource_id "package_id";
       reference_path =
         Prop.computed __resource_type __resource_id "reference_path";
     }
      : t)
  in
  __resource_attributes
