(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_connect_vocabulary = {
  content : string prop;
  id : string prop option; [@option]
  instance_id : string prop;
  language_code : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_vocabulary) -> ()

let yojson_of_aws_connect_vocabulary =
  (function
   | {
       content = v_content;
       id = v_id;
       instance_id = v_instance_id;
       language_code = v_language_code;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_language_code in
         ("language_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : aws_connect_vocabulary -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_vocabulary

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_connect_vocabulary ?id ?tags ?tags_all ?timeouts ~content
    ~instance_id ~language_code ~name () : aws_connect_vocabulary =
  {
    content;
    id;
    instance_id;
    language_code;
    name;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  content : string prop;
  failure_reason : string prop;
  id : string prop;
  instance_id : string prop;
  language_code : string prop;
  last_modified_time : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vocabulary_id : string prop;
}

let make ?id ?tags ?tags_all ?timeouts ~content ~instance_id
    ~language_code ~name __id =
  let __type = "aws_connect_vocabulary" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       content = Prop.computed __type __id "content";
       failure_reason = Prop.computed __type __id "failure_reason";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       language_code = Prop.computed __type __id "language_code";
       last_modified_time =
         Prop.computed __type __id "last_modified_time";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vocabulary_id = Prop.computed __type __id "vocabulary_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_vocabulary
        (aws_connect_vocabulary ?id ?tags ?tags_all ?timeouts
           ~content ~instance_id ~language_code ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~content
    ~instance_id ~language_code ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~content ~instance_id
      ~language_code ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
