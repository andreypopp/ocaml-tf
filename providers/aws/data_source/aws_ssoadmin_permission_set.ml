(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssoadmin_permission_set = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  instance_arn : string prop;
  name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssoadmin_permission_set) -> ()

let yojson_of_aws_ssoadmin_permission_set =
  (function
   | {
       arn = v_arn;
       id = v_id;
       instance_arn = v_instance_arn;
       name = v_name;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssoadmin_permission_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_permission_set

[@@@deriving.end]

let aws_ssoadmin_permission_set ?arn ?id ?name ?tags ~instance_arn ()
    : aws_ssoadmin_permission_set =
  { arn; id; instance_arn; name; tags }

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
}

let make ?arn ?id ?name ?tags ~instance_arn __id =
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
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_permission_set
        (aws_ssoadmin_permission_set ?arn ?id ?name ?tags
           ~instance_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?name ?tags ~instance_arn __id =
  let (r : _ Tf_core.resource) =
    make ?arn ?id ?name ?tags ~instance_arn __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
