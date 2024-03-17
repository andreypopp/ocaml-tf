(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_global_network__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_global_network__timeouts *)

type aws_networkmanager_global_network = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_networkmanager_global_network__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_global_network *)

let aws_networkmanager_global_network ?description ?id ?tags
    ?tags_all ?timeouts __resource_id =
  let __resource_type = "aws_networkmanager_global_network" in
  let __resource = { description; id; tags; tags_all; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_global_network __resource);
  ()
