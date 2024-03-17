(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_oam_link__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_oam_link__timeouts *)

type aws_oam_link = {
  id : string option; [@option]  (** id *)
  label_template : string;  (** label_template *)
  resource_types : string list;  (** resource_types *)
  sink_identifier : string;  (** sink_identifier *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_oam_link__timeouts option;
}
[@@deriving yojson_of]
(** aws_oam_link *)

let aws_oam_link ?id ?tags ?tags_all ?timeouts ~label_template
    ~resource_types ~sink_identifier __resource_id =
  let __resource_type = "aws_oam_link" in
  let __resource =
    {
      id;
      label_template;
      resource_types;
      sink_identifier;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_oam_link __resource);
  ()
