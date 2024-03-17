(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_connect_contact_flow_module = {
  content_hash : string option; [@option]  (** content_hash *)
  description : string option; [@option]  (** description *)
  filename : string option; [@option]  (** filename *)
  instance_id : string;  (** instance_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_connect_contact_flow_module *)

let aws_connect_contact_flow_module ?content_hash ?description
    ?filename ?tags ~instance_id ~name __resource_id =
  let __resource_type = "aws_connect_contact_flow_module" in
  let __resource =
    { content_hash; description; filename; instance_id; name; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_contact_flow_module __resource);
  ()
