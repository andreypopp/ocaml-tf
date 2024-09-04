(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_connect_vocabulary = {
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  vocabulary_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_vocabulary) -> ()

let yojson_of_aws_connect_vocabulary =
  (function
   | {
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
       tags = v_tags;
       vocabulary_id = v_vocabulary_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vocabulary_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vocabulary_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
       `Assoc bnds
    : aws_connect_vocabulary -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_vocabulary

[@@@deriving.end]

let aws_connect_vocabulary ?id ?name ?tags ?vocabulary_id
    ~instance_id () : aws_connect_vocabulary =
  { id; instance_id; name; tags; vocabulary_id }

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
  tags : string Tf_core.assoc prop;
  vocabulary_id : string prop;
}

let make ?id ?name ?tags ?vocabulary_id ~instance_id __id =
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
       vocabulary_id = Prop.computed __type __id "vocabulary_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_vocabulary
        (aws_connect_vocabulary ?id ?name ?tags ?vocabulary_id
           ~instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?tags ?vocabulary_id ~instance_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?tags ?vocabulary_id ~instance_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
