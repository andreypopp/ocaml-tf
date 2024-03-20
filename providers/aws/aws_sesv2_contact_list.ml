(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type topic = {
  default_subscription_status : string prop;
  description : string prop option; [@option]
  display_name : string prop;
  topic_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : topic) -> ()

let yojson_of_topic =
  (function
   | {
       default_subscription_status = v_default_subscription_status;
       description = v_description;
       display_name = v_display_name;
       topic_name = v_topic_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic_name in
         ("topic_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_subscription_status
         in
         ("default_subscription_status", arg) :: bnds
       in
       `Assoc bnds
    : topic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_topic

[@@@deriving.end]

type aws_sesv2_contact_list = {
  contact_list_name : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  topic : topic list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sesv2_contact_list) -> ()

let yojson_of_aws_sesv2_contact_list =
  (function
   | {
       contact_list_name = v_contact_list_name;
       description = v_description;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       topic = v_topic;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_topic v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_contact_list_name
         in
         ("contact_list_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_sesv2_contact_list -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sesv2_contact_list

[@@@deriving.end]

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
