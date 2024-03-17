(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_oam_sink__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_oam_sink__timeouts *)

type aws_oam_sink = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_oam_sink__timeouts option;
}
[@@deriving yojson_of]
(** aws_oam_sink *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  sink_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_oam_sink ?id ?tags ?tags_all ?timeouts ~name __resource_id =
  let __resource_type = "aws_oam_sink" in
  let __resource =
    ({ id; name; tags; tags_all; timeouts } : aws_oam_sink)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_oam_sink __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       sink_id =
         Prop.computed __resource_type __resource_id "sink_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
