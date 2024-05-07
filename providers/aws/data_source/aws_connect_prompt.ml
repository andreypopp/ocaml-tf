(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_connect_prompt = {
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_prompt) -> ()

let yojson_of_aws_connect_prompt =
  (function
   | { id = v_id; instance_id = v_instance_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_connect_prompt -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_prompt

[@@@deriving.end]

let aws_connect_prompt ?id ~instance_id ~name () : aws_connect_prompt
    =
  { id; instance_id; name }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  prompt_id : string prop;
}

let make ?id ~instance_id ~name __id =
  let __type = "aws_connect_prompt" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
       prompt_id = Prop.computed __type __id "prompt_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_prompt
        (aws_connect_prompt ?id ~instance_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~instance_id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
