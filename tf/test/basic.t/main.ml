let () =
  Tf_core.Resource.add ~type_:"t1" ~id:"id1" (`String "t1.id1");
  Tf_core.Resource.add ~type_:"t1" ~id:"id2" (`String "t1.id2");
  Tf_core.Resource.add ~type_:"t2" ~id:"id1" (`String "t2.id1");
  Tf_core.Resource.add ~type_:"t1" ~id:"id3" (`String "t1.id3");
  Tf_core.Resource.add ~type_:"t2" ~id:"id2" (`String "t2.id2");
  let json = Tf_core.Resource.yojson_of () in
  print_endline (Yojson.Safe.to_string json)
