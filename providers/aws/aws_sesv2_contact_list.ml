(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type topic = {
  default_subscription_status : string prop;
      (** default_subscription_status *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  topic_name : string prop;  (** topic_name *)
}
[@@deriving yojson_of]
(** topic *)

type aws_sesv2_contact_list = {
  contact_list_name : string prop;  (** contact_list_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  topic : topic list;
}
[@@deriving yojson_of]
(** aws_sesv2_contact_list *)

let topic ?description ~default_subscription_status ~display_name
    ~topic_name () : topic =
  {
    default_subscription_status;
    description;
    display_name;
    topic_name;
  }

let aws_sesv2_contact_list ?description ?id ?tags ?tags_all
    ~contact_list_name ~topic () : aws_sesv2_contact_list =
  { contact_list_name; description; id; tags; tags_all; topic }

type t = {
  arn : string prop;
  contact_list_name : string prop;
  created_timestamp : string prop;
  description : string prop;
  id : string prop;
  last_updated_timestamp : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~contact_list_name ~topic
    __id =
  let __type = "aws_sesv2_contact_list" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       contact_list_name =
         Prop.computed __type __id "contact_list_name";
       created_timestamp =
         Prop.computed __type __id "created_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_updated_timestamp =
         Prop.computed __type __id "last_updated_timestamp";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_contact_list
        (aws_sesv2_contact_list ?description ?id ?tags ?tags_all
           ~contact_list_name ~topic ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ~contact_list_name ~topic __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~contact_list_name ~topic
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
