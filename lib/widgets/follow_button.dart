import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowButton extends StatefulWidget {
  final bool isFollowing;
  
  const FollowButton({super.key, required this.isFollowing});

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  bool _isFollowing = false;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isFollowing = widget.isFollowing;
  }
  
  void _toggleFollowing() {
    setState(() {
      _isFollowing = !_isFollowing;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _toggleFollowing, 
      style: ElevatedButton.styleFrom(
        backgroundColor: _isFollowing ? Color(0xFFF5EFE1) : Color(0xFFBFA054),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        )
      ),
      child: Text(
        _isFollowing ? "Following" : "Follow",
        style: GoogleFonts.poppins(
          color: Color(0xFF2F2F2F)
        ),
      )
    );
  }
}

