(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearch_package_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_opensearch_package_association__timeouts *)

type aws_opensearch_package_association = {
  domain_name : string;  (** domain_name *)
  package_id : string;  (** package_id *)
  timeouts : aws_opensearch_package_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearch_package_association *)

let aws_opensearch_package_association ?timeouts ~domain_name
    ~package_id __resource_id =
  let __resource_type = "aws_opensearch_package_association" in
  let __resource = { domain_name; package_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_package_association __resource);
  ()
