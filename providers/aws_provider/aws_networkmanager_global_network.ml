(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_global_network__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_global_network__timeouts *)

type aws_networkmanager_global_network = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
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
