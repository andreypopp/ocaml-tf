(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destinations = { stream_name : string prop  (** stream_name *) }
[@@deriving yojson_of]
(** destinations *)

type input_devices = { id : string prop  (** id *) }
[@@deriving yojson_of]
(** input_devices *)

type media_connect_flows = {
  flow_arn : string prop;  (** flow_arn *)
}
[@@deriving yojson_of]
(** media_connect_flows *)

type sources = {
  password_param : string prop;  (** password_param *)
  url : string prop;  (** url *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** sources *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc = {
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** vpc *)

type aws_medialive_input = {
  id : string prop option; [@option]  (** id *)
  input_security_groups : string prop list option; [@option]
      (** input_security_groups *)
  name : string prop;  (** name *)
  role_arn : string prop option; [@option]  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  destinations : destinations list;
  input_devices : input_devices list;
  media_connect_flows : media_connect_flows list;
  sources : sources list;
  timeouts : timeouts option;
  vpc : vpc list;
}
[@@deriving yojson_of]
(** aws_medialive_input *)

let destinations ~stream_name () : destinations = { stream_name }
let input_devices ~id () : input_devices = { id }

let media_connect_flows ~flow_arn () : media_connect_flows =
  { flow_arn }

let sources ~password_param ~url ~username () : sources =
  { password_param; url; username }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc ?security_group_ids ~subnet_ids () : vpc =
  { security_group_ids; subnet_ids }

let aws_medialive_input ?id ?input_security_groups ?role_arn ?tags
    ?tags_all ?timeouts ~name ~type_ ~destinations ~input_devices
    ~media_connect_flows ~sources ~vpc () : aws_medialive_input =
  {
    id;
    input_security_groups;
    name;
    role_arn;
    tags;
    tags_all;
    type_;
    destinations;
    input_devices;
    media_connect_flows;
    sources;
    timeouts;
    vpc;
  }

type t = {
  arn : string prop;
  attached_channels : string list prop;
  id : string prop;
  input_class : string prop;
  input_partner_ids : string list prop;
  input_security_groups : string list prop;
  input_source_type : string prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?id ?input_security_groups ?role_arn ?tags ?tags_all
    ?timeouts ~name ~type_ ~destinations ~input_devices
    ~media_connect_flows ~sources ~vpc __id =
  let __type = "aws_medialive_input" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       attached_channels =
         Prop.computed __type __id "attached_channels";
       id = Prop.computed __type __id "id";
       input_class = Prop.computed __type __id "input_class";
       input_partner_ids =
         Prop.computed __type __id "input_partner_ids";
       input_security_groups =
         Prop.computed __type __id "input_security_groups";
       input_source_type =
         Prop.computed __type __id "input_source_type";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_medialive_input
        (aws_medialive_input ?id ?input_security_groups ?role_arn
           ?tags ?tags_all ?timeouts ~name ~type_ ~destinations
           ~input_devices ~media_connect_flows ~sources ~vpc ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?input_security_groups ?role_arn ?tags
    ?tags_all ?timeouts ~name ~type_ ~destinations ~input_devices
    ~media_connect_flows ~sources ~vpc __id =
  let (r : _ Tf_core.resource) =
    make ?id ?input_security_groups ?role_arn ?tags ?tags_all
      ?timeouts ~name ~type_ ~destinations ~input_devices
      ~media_connect_flows ~sources ~vpc __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
