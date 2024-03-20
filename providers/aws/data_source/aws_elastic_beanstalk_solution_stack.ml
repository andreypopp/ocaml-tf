(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_elastic_beanstalk_solution_stack = {
  id : string prop option; [@option]
  most_recent : bool prop option; [@option]
  name_regex : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elastic_beanstalk_solution_stack) -> ()

let yojson_of_aws_elastic_beanstalk_solution_stack =
  (function
   | {
       id = v_id;
       most_recent = v_most_recent;
       name_regex = v_name_regex;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name_regex in
         ("name_regex", arg) :: bnds
       in
       let bnds =
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
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
       `Assoc bnds
    : aws_elastic_beanstalk_solution_stack ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elastic_beanstalk_solution_stack

[@@@deriving.end]

let aws_elastic_beanstalk_solution_stack ?id ?most_recent ~name_regex
    () : aws_elastic_beanstalk_solution_stack =
  { id; most_recent; name_regex }

type t = {
  id : string prop;
  most_recent : bool prop;
  name : string prop;
  name_regex : string prop;
}

let make ?id ?most_recent ~name_regex __id =
  let __type = "aws_elastic_beanstalk_solution_stack" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       most_recent = Prop.computed __type __id "most_recent";
       name = Prop.computed __type __id "name";
       name_regex = Prop.computed __type __id "name_regex";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elastic_beanstalk_solution_stack
        (aws_elastic_beanstalk_solution_stack ?id ?most_recent
           ~name_regex ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?most_recent ~name_regex __id =
  let (r : _ Tf_core.resource) =
    make ?id ?most_recent ~name_regex __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
