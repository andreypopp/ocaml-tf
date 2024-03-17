(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipam_scope__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_scope__timeouts *)

type aws_vpc_ipam_scope = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  ipam_id : string prop;  (** ipam_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_vpc_ipam_scope__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam_scope *)

let aws_vpc_ipam_scope ?description ?id ?tags ?tags_all ?timeouts
    ~ipam_id __resource_id =
  let __resource_type = "aws_vpc_ipam_scope" in
  let __resource =
    { description; id; ipam_id; tags; tags_all; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_scope __resource);
  ()
