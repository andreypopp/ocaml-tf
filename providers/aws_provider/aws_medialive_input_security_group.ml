(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_medialive_input_security_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_medialive_input_security_group__timeouts *)

type aws_medialive_input_security_group__whitelist_rules = {
  cidr : string;  (** cidr *)
}
[@@deriving yojson_of]
(** aws_medialive_input_security_group__whitelist_rules *)

type aws_medialive_input_security_group = {
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_medialive_input_security_group__timeouts option;
  whitelist_rules :
    aws_medialive_input_security_group__whitelist_rules list;
}
[@@deriving yojson_of]
(** aws_medialive_input_security_group *)

let aws_medialive_input_security_group ?id ?tags ?tags_all ?timeouts
    ~whitelist_rules __resource_id =
  let __resource_type = "aws_medialive_input_security_group" in
  let __resource =
    { id; tags; tags_all; timeouts; whitelist_rules }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_medialive_input_security_group __resource);
  ()
