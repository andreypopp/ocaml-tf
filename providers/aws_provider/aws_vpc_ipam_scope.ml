(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_vpc_ipam_scope__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_scope__timeouts *)

type aws_vpc_ipam_scope = {
  description : string option; [@option]  (** description *)
  ipam_id : string;  (** ipam_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_vpc_ipam_scope__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam_scope *)

let aws_vpc_ipam_scope ?description ?tags ?timeouts ~ipam_id
    __resource_id =
  let __resource_type = "aws_vpc_ipam_scope" in
  let __resource = { description; ipam_id; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_scope __resource);
  ()