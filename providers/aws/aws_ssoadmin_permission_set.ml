(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { update : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ssoadmin_permission_set = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  instance_arn : string prop;
  name : string prop;
  relay_state : string prop option; [@option]
  session_duration : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssoadmin_permission_set) -> ()

let yojson_of_aws_ssoadmin_permission_set =
  (function
   | {
       description = v_description;
       id = v_id;
       instance_arn = v_instance_arn;
       name = v_name;
       relay_state = v_relay_state;
       session_duration = v_session_duration;
       tags = v_tags;
       tags_all = v_tags_all;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         match v_session_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_relay_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "relay_state", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_arn in
         ("instance_arn", arg) :: bnds
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
       `Assoc bnds
    : aws_ssoadmin_permission_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_permission_set

[@@@deriving.end]

let timeouts ?update () : timeouts = { update }

let aws_ssoadmin_permission_set ?description ?id ?relay_state
    ?session_duration ?tags ?tags_all ?timeouts ~instance_arn ~name
    () : aws_ssoadmin_permission_set =
  {
    description;
    id;
    instance_arn;
    name;
    relay_state;
    session_duration;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  instance_arn : string prop;
  name : string prop;
  relay_state : string prop;
  session_duration : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?relay_state ?session_duration ?tags
    ?tags_all ?timeouts ~instance_arn ~name __id =
  let __type = "aws_ssoadmin_permission_set" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_arn = Prop.computed __type __id "instance_arn";
       name = Prop.computed __type __id "name";
       relay_state = Prop.computed __type __id "relay_state";
       session_duration =
         Prop.computed __type __id "session_duration";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_permission_set
        (aws_ssoadmin_permission_set ?description ?id ?relay_state
           ?session_duration ?tags ?tags_all ?timeouts ~instance_arn
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?relay_state
    ?session_duration ?tags ?tags_all ?timeouts ~instance_arn ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?relay_state ?session_duration ?tags
      ?tags_all ?timeouts ~instance_arn ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
